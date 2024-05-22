.class public abstract Lcom/android/systemui/statusbar/notification/policy/NotificationFilterController;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# static fields
.field public static final DEBUG:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    sget-boolean v0, Lcom/miui/utils/configs/MiuiDebugConfig;->DEBUG:Z

    .line 2
    sput-boolean v0, Lcom/android/systemui/statusbar/notification/policy/NotificationFilterController;->DEBUG:Z

    .line 4
    return-void
    .line 6
.end method
