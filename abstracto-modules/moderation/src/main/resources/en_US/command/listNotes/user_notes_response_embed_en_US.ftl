<#include "format_instant">
{
    "embeds": [
        {
            "author": {
                <#if specifiedUser??>
                "name": "<@member_user_name member=specifiedUser.member/>",
                "avatar": "${specifiedUser.member.user.effectiveAvatarUrl}"
                <#else>
                "name": "<@member_user_name member=member/>",
                "avatar": "${member.user.effectiveAvatarUrl}"
                </#if>
            },
            "title": {
            <#if specifiedUser??>
            <#assign user><@member_user_name member=specifiedUser.member/></#assign>
                "title": "<@safe_include "user_notes_embed_user_title"/>"
            <#else>
                "title": "<@safe_include "user_notes_embed_title"/>"
            </#if>
            },
            <#include "success_color">,
            "description": "<#list userNotes as note><#assign note=note/>
<#assign user><#if note.fullUser.member?has_content>${note.fullUser.member.asMention?json_string}<#else>${note.fullUser.aUserInAServer.userReference.id?c}</#if></#assign>
<#assign noteText>${note.note.note?json_string}</#assign>
<#assign noteId>${note.note.userNoteId.id}</#assign>
<#assign date><@format_instant_date_time instant=note.note.created/></#assign>
<@safe_include "user_notes_note_entry"/><#else><@safe_include "user_notes_no_notes"/>
</#list>"
        }
    ]
}