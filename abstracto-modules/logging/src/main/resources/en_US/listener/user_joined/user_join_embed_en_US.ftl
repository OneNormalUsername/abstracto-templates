{
    "embeds": [
        {
            <#assign user>${member.user.name}#${member.user.discriminator} (${member.asMention}: ${member.id})</#assign>
            "description": "<@safe_include "user_joined_text"/>",
            <#include "abstracto_color"/>
        }
    ]
}