package com.sda.demo.tasks.facade;

import com.sda.demo.tasks.TasksApplication;
import com.sda.demo.tasks.model.Task;
import com.sda.demo.tasks.repository.TaskRepository;
import org.apache.log4j.spi.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.time.LocalDateTime;
import java.util.Date;
import java.util.List;
import java.util.logging.Logger;

@Service
public class TaskFacade {

    private static final Logger LOGGER = LoggerFactory.getLogger(TasksApplication.class);

    @Autowired
    private TaskRepository taskRepository;

    public List<Task> findAll() {
        return taskRepository.findAll();
    }

    public void save(Task task) {
        if (task.getDateCreated() == null) {
            task.setDateCreated(LocalDateTime.now());
        } else{
            LOGGER.info("Saving edited task with id: {} and name {}",task.getName());
        }
        try{
            taskRepository.save(task);
        }catch (Exception ex){
            LOGGER.error("Saving task error" , ex.getMessage());
        }
    }

    public Task findTaskById(Long id) {
        return taskRepository.findOne(id);
    }

    public void deleteTask(Long id) {
        taskRepository.delete(id);
        LOGGER.info("Deleted task id: {}");
    }
}
