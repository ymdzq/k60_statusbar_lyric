.class public interface abstract Lcom/android/systemui/statusbar/events/StatusEvent;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# virtual methods
.method public abstract getContentDescription()Ljava/lang/String;
.end method

.method public abstract getForceVisible()Z
.end method

.method public abstract getPriority()I
.end method

.method public abstract getShowAnimation()Z
.end method

.method public abstract getViewCreator()Lkotlin/jvm/functions/Function1;
.end method

.method public abstract setForceVisible()V
.end method

.method public abstract shouldUpdateFromEvent(Lcom/android/systemui/statusbar/events/StatusEvent;)Z
.end method

.method public abstract updateFromEvent(Lcom/android/systemui/statusbar/events/StatusEvent;)V
.end method
