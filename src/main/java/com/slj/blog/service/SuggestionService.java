package com.slj.blog.service;

import com.slj.blog.entity.Suggestion;

public interface SuggestionService {
    /**
     * 发送信息
     *
     * @param suggestion
     */
    void sendSuggestion(Suggestion suggestion);
}
