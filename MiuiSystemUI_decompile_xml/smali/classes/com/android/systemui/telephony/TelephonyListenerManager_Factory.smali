.class public abstract Lcom/android/systemui/telephony/TelephonyListenerManager_Factory;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Ljavax/inject/Provider;


# direct methods
.method public static newInstance(Landroid/telephony/TelephonyManager;Ljava/util/concurrent/Executor;Lcom/android/systemui/telephony/TelephonyCallback;)Lcom/android/systemui/telephony/TelephonyListenerManager;
    .locals 1

    .line 1
    new-instance v0, Lcom/android/systemui/telephony/TelephonyListenerManager;

    .line 2
    invoke-direct {v0, p0, p1, p2}, Lcom/android/systemui/telephony/TelephonyListenerManager;-><init>(Landroid/telephony/TelephonyManager;Ljava/util/concurrent/Executor;Lcom/android/systemui/telephony/TelephonyCallback;)V

    .line 4
    return-object v0
    .line 7
.end method
