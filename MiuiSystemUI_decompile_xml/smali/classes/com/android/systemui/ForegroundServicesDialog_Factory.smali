.class public abstract Lcom/android/systemui/ForegroundServicesDialog_Factory;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Ljavax/inject/Provider;


# direct methods
.method public static newInstance(Lcom/android/internal/logging/MetricsLogger;)Lcom/android/systemui/ForegroundServicesDialog;
    .locals 1

    .line 1
    new-instance v0, Lcom/android/systemui/ForegroundServicesDialog;

    .line 2
    invoke-direct {v0, p0}, Lcom/android/systemui/ForegroundServicesDialog;-><init>(Lcom/android/internal/logging/MetricsLogger;)V

    .line 4
    return-object v0
    .line 7
.end method
