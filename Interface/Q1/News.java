package com.company.Interface.Q1;

public class News implements INews {
    private int id;
    private String title;
    private String publishDate;
    private String author;
    private String content;
    private float averageRate;
    private int[] rate;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getPublishDate() {
        return publishDate;
    }

    public void setPublishDate(String publishDate) {
        this.publishDate = publishDate;
    }

    public String getAuthor() {
        return author;
    }

    public void setAuthor(String author) {
        this.author = author;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }

    public float getAverageRate() {
        return averageRate;
    }


    @Override
    public void disPlay() {
        System.out.println("Title: " +title +" "
                + "PublishDate"+ publishDate
                +" "+"Author"+author+" "
                + "Content"+content+" "
                +" AverageRate"+averageRate);
    }

    @Override
    public float calculate() {
        averageRate = (float) ((rate[1]+rate[2]+rate[2])/3);
        return (averageRate);
    }
}

