trigger AutoFixMentionsComment on FeedComment (after insert) {

    Set<String> badMentions = AutoFixMentions.getBadMentions(trigger.new);
    
    if (badMentions != null && badMentions.size() > 0) {
        AutoFixMentions.postCommentWithMentions(trigger.new, badMentions);
    }
}
