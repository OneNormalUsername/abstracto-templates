{
  <#include "member_author">
  <@member_author member=member/>,
  <#include "modmail_color">,
  <#assign user><@member_user_name member=member/> (${member.user.id})</#assign>
  <#assign joinDate>${member.timeJoined}</#assign>
  <#assign roles><#list member.roles as role>${role.asMention?js_string}<#sep>,<#else><@safe_include "modmail_thread_header_no_roles"/></#list></#assign>
  "description": "<@safe_include "modmail_thread_header_embed_description"/>"
}