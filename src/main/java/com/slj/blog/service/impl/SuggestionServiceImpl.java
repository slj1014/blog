package com.slj.blog.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.slj.blog.entity.Suggestion;
import com.slj.blog.mapper.SuggestionMapper;
import com.slj.blog.service.SuggestionService;
import com.slj.blog.utils.MailUtil;
import com.slj.blog.utils.ThreadUtils;

@Service
public class SuggestionServiceImpl implements SuggestionService {

    @Autowired
    private SuggestionMapper suggestionDao;

    @Value("${mail.smtp.host}")
    private String mailHost;

    @Value("${mail.user}")
    private String mailUser;

    @Value("${mail.password}")
    private String mailPassword;

    @Override
    @Transactional
    public void sendSuggestion(final Suggestion suggestion) {
        suggestionDao.createSuggestion(suggestion);
        ThreadUtils.getExecutorService().execute(new Runnable() {
            public void run() {
                try {
                    String content = "<div>来自:<b>" + suggestion.getFromName() + "</b>的邮件</div><br/><div>内容:<b>"
                            + suggestion.getContent() + "</b></div>";
                    MailUtil.sendMail(mailHost, mailUser, mailPassword, suggestion.getToAddress(),
                            suggestion.getSubject(), content);
                } catch (Exception e) {
                    e.printStackTrace();
                }
            }
        });
    }
}
