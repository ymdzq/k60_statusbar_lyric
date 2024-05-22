.class public interface abstract Lcom/android/systemui/plugins/miui/statusbar/MiuiPrivacyController;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


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
