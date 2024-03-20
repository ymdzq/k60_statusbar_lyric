.class public abstract Lcom/android/systemui/statusbar/notification/row/RowContentBindStage_Factory;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Ljavax/inject/Provider;


# direct methods
.method public static newInstance(Lcom/android/systemui/statusbar/notification/row/NotificationRowContentBinder;Lcom/android/systemui/statusbar/notification/row/NotifInflationErrorManager;Lcom/android/systemui/statusbar/notification/row/RowContentBindStageLogger;)Lcom/android/systemui/statusbar/notification/row/RowContentBindStage;
    .locals 1

    .line 1
    new-instance v0, Lcom/android/systemui/statusbar/notification/row/RowContentBindStage;

    .line 2
    invoke-direct {v0, p0, p1, p2}, Lcom/android/systemui/statusbar/notification/row/RowContentBindStage;-><init>(Lcom/android/systemui/statusbar/notification/row/NotificationRowContentBinder;Lcom/android/systemui/statusbar/notification/row/NotifInflationErrorManager;Lcom/android/systemui/statusbar/notification/row/RowContentBindStageLogger;)V

    .line 4
    return-object v0
    .line 7
.end method
