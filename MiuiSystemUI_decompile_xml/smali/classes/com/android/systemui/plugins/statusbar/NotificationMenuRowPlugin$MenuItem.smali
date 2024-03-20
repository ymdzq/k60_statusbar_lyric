.class public interface abstract Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin$MenuItem;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# annotations
.annotation runtime Lcom/android/systemui/plugins/annotations/ProvidesInterface;
    version = 0x1
.end annotation


# static fields
.field public static final VERSION:I = 0x1


# virtual methods
.method public abstract getContentDescription()Ljava/lang/String;
.end method

.method public abstract getGutsView()Landroid/view/View;
.end method

.method public abstract getMenuView()Landroid/view/View;
.end method
