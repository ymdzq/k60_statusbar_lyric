.class public interface abstract Lcom/android/systemui/plugins/miui/statusbar/MiuiPrivacyController;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# annotations
.annotation runtime Lcom/android/systemui/plugins/annotations/ProvidesInterface;
    version = 0x1
.end annotation


# static fields
.field public static final FLAG_OTHER_PRIVACY_CONTAINER:I = 0x2

.field public static final FLAG_STATUS_BAR_CONTAINER:I = 0x0

.field public static final FLAG_STATUS_BAR_DOT_CONTAINER:I = 0x1

.field public static final FLAG_STATUS_BAR_PRIVACY_CONTAINER:I = 0x3

.field public static final VERSION:I = 0x1


# virtual methods
.method public abstract addPrivacyCallback(Lcom/android/systemui/plugins/miui/statusbar/MiuiPrivacyController$MiuiPrivacyCallback;)V
.end method

.method public abstract onPrivacyClick(Landroid/view/View;)V
.end method

.method public abstract removePrivacyCallback(Lcom/android/systemui/plugins/miui/statusbar/MiuiPrivacyController$MiuiPrivacyCallback;)V
.end method
