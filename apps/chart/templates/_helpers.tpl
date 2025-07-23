{{/*
Generate a name for the application
*/}}
{{- define "msa-auth.name" -}}
msa-auth
{{- end }}

{{/*
Generate the full name including release name
*/}}
{{- define "msa-auth.fullname" -}}
{{ .Release.Name }}-msa-auth
{{- end }}
