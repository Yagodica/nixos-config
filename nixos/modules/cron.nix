{
  services.cron = {
    enable = true;
    systemCronJobs = [
      "*/5 * * * * /home/ivan/code/todo-django-yandex/venv/bin/python /home/ivan/code/todo-django-yandex/manage.py check_deadlines"
    ];
  };
}
