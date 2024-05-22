.class public abstract Lcom/android/systemui/clipboardoverlay/ClipboardListener_Factory;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Ljavax/inject/Provider;


# direct methods
.method public static newInstance(Landroid/content/Context;Ljavax/inject/Provider;Ljava/lang/Object;Landroid/content/ClipboardManager;Lcom/android/internal/logging/UiEventLogger;)Lcom/android/systemui/clipboardoverlay/ClipboardListener;
    .locals 7

    .line 1
    new-instance v6, Lcom/android/systemui/clipboardoverlay/ClipboardListener;

    .line 2
    move-object v3, p2

    .line 4
    check-cast v3, Lcom/android/systemui/clipboardoverlay/ClipboardToast;

    .line 5
    move-object v0, v6

    .line 7
    move-object v1, p0

    .line 8
    move-object v2, p1

    .line 9
    move-object v4, p3

    .line 10
    move-object v5, p4

    .line 11
    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/clipboardoverlay/ClipboardListener;-><init>(Landroid/content/Context;Ljavax/inject/Provider;Lcom/android/systemui/clipboardoverlay/ClipboardToast;Landroid/content/ClipboardManager;Lcom/android/internal/logging/UiEventLogger;)V

    .line 12
    return-object v6
    .line 15
.end method
