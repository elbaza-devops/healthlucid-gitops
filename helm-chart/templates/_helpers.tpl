{{/*
Return the full name: release + chart
*/}}
{{- define "microservice.fullname" -}}
{{ printf "%s" .Release.Name | trunc 63 }}
{{- end }}

{{/*
Common labels
*/}}
{{- define "microservice.labels" -}}
app.kubernetes.io/name: {{ include "microservice.fullname" . }}
app.kubernetes.io/instance: {{ .Release.Name }}
app.kubernetes.io/version: {{ .Chart.AppVersion }}
app.kubernetes.io/managed-by: Helm
{{- end }}
