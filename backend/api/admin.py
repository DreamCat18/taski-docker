"""Администрирование моделей API."""

from django.contrib import admin

from .models import Task


class TaskAdmin(admin.ModelAdmin):
    """Админ-класс для модели Task."""

    list_display = ('title', 'description', 'completed')


admin.site.register(Task, TaskAdmin)
