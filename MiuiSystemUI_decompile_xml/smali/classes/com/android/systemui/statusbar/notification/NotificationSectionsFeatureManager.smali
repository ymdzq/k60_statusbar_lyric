.class public abstract Lcom/android/systemui/statusbar/notification/NotificationSectionsFeatureManager;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public final context:Landroid/content/Context;

.field public final proxy:Lcom/android/systemui/util/DeviceConfigProxy;


# direct methods
.method public constructor <init>(Lcom/android/systemui/util/DeviceConfigProxy;Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/NotificationSectionsFeatureManager;->proxy:Lcom/android/systemui/util/DeviceConfigProxy;

    .line 5
    iput-object p2, p0, Lcom/android/systemui/statusbar/notification/NotificationSectionsFeatureManager;->context:Landroid/content/Context;

    .line 7
    return-void
    .line 9
.end method


# virtual methods
.method public final clearCache()V
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    sput-object p0, Lcom/android/systemui/statusbar/notification/NotificationSectionsFeatureManagerKt;->sUsePeopleFiltering:Ljava/lang/Boolean;

    .line 3
    return-void
    .line 5
.end method

.method public final isFilteringEnabled()Z
    .locals 2

    .line 1
    sget-object v0, Lcom/android/systemui/statusbar/notification/NotificationSectionsFeatureManagerKt;->sUsePeopleFiltering:Ljava/lang/Boolean;

    .line 2
    if-nez v0, :cond_0

    .line 4
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/NotificationSectionsFeatureManager;->proxy:Lcom/android/systemui/util/DeviceConfigProxy;

    .line 6
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    const/4 p0, 0x1

    .line 11
    const-string/jumbo v0, "systemui"

    .line 12
    const-string v1, "notifications_use_people_filtering"

    .line 15
    invoke-static {v0, v1, p0}, Landroid/provider/DeviceConfig;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 17
    move-result p0

    .line 20
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 21
    move-result-object p0

    .line 24
    sput-object p0, Lcom/android/systemui/statusbar/notification/NotificationSectionsFeatureManagerKt;->sUsePeopleFiltering:Ljava/lang/Boolean;

    .line 25
    :cond_0
    sget-object p0, Lcom/android/systemui/statusbar/notification/NotificationSectionsFeatureManagerKt;->sUsePeopleFiltering:Ljava/lang/Boolean;

    .line 27
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 29
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 32
    move-result p0

    .line 35
    return p0
    .line 36
.end method
