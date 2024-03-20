.class public Lcom/android/settings/statistic/SettingsCollectorService$SettingsProviderData;
.super Ljava/lang/Object;
.source "SettingsCollectorService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/statistic/SettingsCollectorService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SettingsProviderData"
.end annotation


# instance fields
.field private final mCategory:Ljava/lang/String;

.field private final mKey:Ljava/lang/String;

.field private final mType:Ljava/lang/String;

.field private final mValue:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/settings/statistic/SettingsCollectorService;


# direct methods
.method public constructor <init>(Lcom/android/settings/statistic/SettingsCollectorService;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 434
    iput-object p1, p0, Lcom/android/settings/statistic/SettingsCollectorService$SettingsProviderData;->this$0:Lcom/android/settings/statistic/SettingsCollectorService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 435
    iput-object p2, p0, Lcom/android/settings/statistic/SettingsCollectorService$SettingsProviderData;->mType:Ljava/lang/String;

    .line 436
    iput-object p3, p0, Lcom/android/settings/statistic/SettingsCollectorService$SettingsProviderData;->mCategory:Ljava/lang/String;

    .line 437
    iput-object p4, p0, Lcom/android/settings/statistic/SettingsCollectorService$SettingsProviderData;->mKey:Ljava/lang/String;

    .line 438
    iput-object p5, p0, Lcom/android/settings/statistic/SettingsCollectorService$SettingsProviderData;->mValue:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public upload()V
    .locals 3

    .line 459
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 460
    iget-object v1, p0, Lcom/android/settings/statistic/SettingsCollectorService$SettingsProviderData;->mKey:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/settings/statistic/SettingsCollectorService$SettingsProviderData;->mValue:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 461
    iget-object p0, p0, Lcom/android/settings/statistic/SettingsCollectorService$SettingsProviderData;->mCategory:Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/android/settingslib/util/OneTrackInterfaceUtils;->track(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method
