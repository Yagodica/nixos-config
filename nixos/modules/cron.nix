{
  services.cron = {
    enable = true;
    systemCronJobs = [
      "*/1 * * * * ivan /home/ivan/code/todo-django-yandex/venv/bin/python /home/ivan/code/todo-django-yandex/manage.py check_deadlines"
    ];
  };
}
