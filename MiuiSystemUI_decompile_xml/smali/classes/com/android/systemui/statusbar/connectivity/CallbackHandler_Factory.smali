.class public abstract Lcom/android/systemui/statusbar/connectivity/CallbackHandler_Factory;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Ljavax/inject/Provider;


# direct methods
.method public static newInstance(Landroid/os/Looper;)Lcom/android/systemui/statusbar/connectivity/CallbackHandler;
    .locals 1

    .line 1
    new-instance v0, Lcom/android/systemui/statusbar/connectivity/CallbackHandler;

    .line 2
    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/connectivity/CallbackHandler;-><init>(Landroid/os/Looper;)V

    .line 4
    return-object v0
    .line 7
.end method
