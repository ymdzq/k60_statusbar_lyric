.class public interface abstract Lcom/android/wm/shell/sosc/ISoScSplitScreenListener;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Landroid/os/IInterface;


# static fields
.field public static final DESCRIPTOR:Ljava/lang/String; = "com.android.wm.shell.sosc.ISoScSplitScreenListener"


# virtual methods
.method public abstract onPreSoScStateChanged(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;IZZII)V
.end method

.method public abstract onSoScStateChanged(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;ILandroid/app/ActivityManager$RunningTaskInfo;Landroid/app/ActivityManager$RunningTaskInfo;ZII)V
.end method

.method public abstract onStagePositionChanged(II)V
.end method

.method public abstract onTaskStageChanged(IIZ)V
.end method

.method public abstract setSplitScreenResizing(Z)V
.end method
