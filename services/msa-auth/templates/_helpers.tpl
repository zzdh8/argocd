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

{{/*
Return the chart version.
*/}}
{{- define "msa-auth.chart" -}}
{{- printf "%s-%s" .Chart.Name .Chart.Version -}}
{{- end }}

{{/*
Common labels
*/}}
{{- define "msa-auth.labels" -}}
app.kubernetes.io/name: {{ include "msa-auth.name" . }}
app.kubernetes.io/instance: {{ .Release.Name }}
app.kubernetes.io/version: {{ .Chart.AppVersion }}
app.kubernetes.io/managed-by: {{ .Release.Service }}
{{- end }}