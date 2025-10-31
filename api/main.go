package main

import (
  "net/http"

  "github.com/gin-gonic/gin"
)

func setUpRouter() *gin.Engine {
  // Create a Gin router with default middleware (logger and recovery)
  r := gin.Default()
  
  // Define a simple GET endpoint
  r.GET("/ping", func(c *gin.Context) {
    // Return JSON response
    c.JSON(http.StatusOK, gin.H{
      "message": "pong",
    })
  })

	return r
}

func main() {
	// Initialize router
	r := setUpRouter()

  // Start server on port 8080 (default)
  // Server will listen on 0.0.0.0:8080 (localhost:8080 on Windows)
  r.Run()
}
