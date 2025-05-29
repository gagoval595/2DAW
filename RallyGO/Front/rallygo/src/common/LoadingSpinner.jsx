import React from "react";

const LoadingSpinner = () => {
  return (
    <div 
      style={{
        display: "flex",
        justifyContent: "center",
        alignItems: "center",
        height: "100vh",
        backgroundColor: "#f8f9fa"
      }}
    >
      <div className="spinner-border text-primary" role="status" style={{ width: "3rem", height: "3rem" }}>
        <span className="visually-hidden">Cargando...</span>
      </div>
      <p className="ms-3 fs-4">Cargando RallyGO...</p>
    </div>
  );
};

export default LoadingSpinner;