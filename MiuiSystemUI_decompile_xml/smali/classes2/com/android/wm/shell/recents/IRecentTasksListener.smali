.class public interface abstract Lcom/android/wm/shell/recents/IRecentTasksListener;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Landroid/os/IInterface;


# virtual methods
.method public abstract onRecentTasksChanged()V
.end method

.method public abstract onRunningTaskAppeared(Landroid/app/ActivityManager$RunningTaskInfo;)V
.end method

.method public abstract onRunningTaskVanished(Landroid/app/ActivityManager$RunningTaskInfo;)V
.end method
