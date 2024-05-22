.class public interface abstract Lcom/android/systemui/plugins/DarkIconDispatcher$DarkReceiver;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# annotations
.annotation runtime Lcom/android/systemui/plugins/annotations/ProvidesInterface;
    version = 0x2
.end annotation


# static fields
.field public static final VERSION:I = 0x2


# virtual methods
.method public onDarkChanged(Ljava/util/ArrayList;FI)V
    .locals 0

    .line 1
    return-void
.end method

.method public onDarkChanged(Ljava/util/ArrayList;FIIIZ)V
    .locals 0

    .line 2
    invoke-interface {p0, p1, p2, p3}, Lcom/android/systemui/plugins/DarkIconDispatcher$DarkReceiver;->onDarkChanged(Ljava/util/ArrayList;FI)V

    return-void
.end method
