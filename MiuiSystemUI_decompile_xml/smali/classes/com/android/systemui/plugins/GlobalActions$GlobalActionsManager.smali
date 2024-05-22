.class public interface abstract Lcom/android/systemui/plugins/GlobalActions$GlobalActionsManager;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# annotations
.annotation runtime Lcom/android/systemui/plugins/annotations/ProvidesInterface;
    version = 0x1
.end annotation


# static fields
.field public static final VERSION:I = 0x1


# virtual methods
.method public abstract onGlobalActionsHidden()V
.end method

.method public abstract onGlobalActionsShown()V
.end method

.method public abstract reboot(Z)V
.end method

.method public abstract shutdown()V
.end method
