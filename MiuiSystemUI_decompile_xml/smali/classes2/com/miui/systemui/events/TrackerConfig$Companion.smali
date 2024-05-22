.class public final Lcom/miui/systemui/events/TrackerConfig$Companion;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/miui/systemui/events/TrackerConfig$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final resolveChannelName()Ljava/lang/String;
    .locals 0

    .line 1
    sget-boolean p0, Lcom/miui/utils/configs/MiuiConfigs;->IS_DEVELOPMENT_VERSION:Z

    .line 2
    if-eqz p0, :cond_0

    .line 4
    const-string p0, "MIUI15-dev"

    .line 6
    goto :goto_0

    .line 8
    :cond_0
    const-string p0, "MIUI15"

    .line 9
    :goto_0
    return-object p0
    .line 11
.end method
