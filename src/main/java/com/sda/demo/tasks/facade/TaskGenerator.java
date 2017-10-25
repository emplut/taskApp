package com.sda.demo.tasks.facade;

import com.sda.demo.tasks.model.Task;
import org.springframework.stereotype.Component;

import java.util.ArrayList;
import java.util.List;

@Component
public class TaskGenerator {

    public List<Task> generateTasks() {

        List<Task> tasks = new ArrayList<>();

        Task task = new Task();
        task.setName("task 1");
        task.setComment("task 1 comment");
        task.setPriority(1);

        Task task2 = new Task();
        task2.setName("task 2");
        task2.setComment("task 2 comment");
        task2.setPriority(2);

        tasks.add(task);
        tasks.add(task2);

        return tasks;
    }

}
