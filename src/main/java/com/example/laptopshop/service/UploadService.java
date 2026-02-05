package com.example.laptopshop.service;

import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.nio.file.Paths;
import java.util.UUID;

import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import jakarta.servlet.ServletContext;

@Service
public class UploadService {

    private final ServletContext servletContext;

    // Constructor injection
    public UploadService(ServletContext servletContext) {
        this.servletContext = servletContext;
    }

    /**
     * Upload 1 file
     */
    public String handleSaveUploadFile(MultipartFile file, String targetFolder) {

        if (file == null || file.isEmpty()) {
            return null;
        }

        String rootPath = servletContext.getRealPath("/resources/images");
        String fileName = null;

        try {
            // Tạo thư mục nếu chưa tồn tại
            File dir = new File(rootPath + File.separator + targetFolder);
            if (!dir.exists()) {
                dir.mkdirs();
            }

            // Lấy tên file gốc (sanitize)
            String originalName = Paths.get(file.getOriginalFilename())
                    .getFileName()
                    .toString();

            // UUID chống ghi đè
            fileName = UUID.randomUUID().toString() + "-" + originalName;

            // Tạo file trên server
            File serverFile = new File(dir, fileName);

            // Ghi file (try-with-resources)
            try (BufferedOutputStream stream = new BufferedOutputStream(new FileOutputStream(serverFile))) {
                stream.write(file.getBytes());
            }

        } catch (IOException e) {
            e.printStackTrace();
        }

        return fileName;
    }

}
