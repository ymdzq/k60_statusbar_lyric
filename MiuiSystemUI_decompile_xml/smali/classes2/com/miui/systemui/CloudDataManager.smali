.class public final Lcom/miui/systemui/CloudDataManager;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# static fields
.field public static final URI:Landroid/net/Uri;

.field public static cloudDataUpdated:Z


# instance fields
.field public final listeners:Ljava/util/List;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    const-string v0, "content://com.android.settings.cloud.CloudSettings/cloud_all_data/notify"

    .line 2
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 4
    move-result-object v0

    .line 7
    sput-object v0, Lcom/miui/systemui/CloudDataManager;->URI:Landroid/net/Uri;

    .line 8
    return-void
    .line 10
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    .line 5
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 7
    iput-object v0, p0, Lcom/miui/systemui/CloudDataManager;->listeners:Ljava/util/List;

    .line 10
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 12
    move-result-object p1

    .line 15
    new-instance v0, Landroid/os/Handler;

    .line 16
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 18
    move-result-object v1

    .line 21
    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 22
    new-instance v1, Lcom/miui/systemui/CloudDataManager$1;

    .line 25
    invoke-direct {v1, p0, v0}, Lcom/miui/systemui/CloudDataManager$1;-><init>(Lcom/miui/systemui/CloudDataManager;Landroid/os/Handler;)V

    .line 27
    sget-object p0, Lcom/miui/systemui/CloudDataManager;->URI:Landroid/net/Uri;

    .line 30
    const/4 v0, 0x0

    .line 32
    invoke-virtual {p1, p0, v0, v1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 33
    return-void
    .line 36
.end method
