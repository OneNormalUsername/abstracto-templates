<#if days gt 1><#include "duration_days"><#elseif days = 1><#include "duration_day"></#if> <#if hours gt 1><#include "duration_hours"><#elseif hours = 1><#include "duration_hour"></#if> <#if minutes gt 1><#include "duration_minutes"><#elseif minutes = 1><#include "duration_minute"></#if> <#if seconds gt 1 || (seconds = 0 && days = 0 && hours = 0 && minutes = 0)><#include "duration_seconds"><#elseif seconds = 1><#include "duration_second"></#if>