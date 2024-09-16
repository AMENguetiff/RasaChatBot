FROM rasa/rasa-sdk:2.6.0

WORKDIR /app

COPY actions /app/actions

USER root
RUN pip install --no-cache-dir -r /app/actions/requirements_actions.txt

USER 1001
CMD ["start", "--actions", "actions", "--debug"]