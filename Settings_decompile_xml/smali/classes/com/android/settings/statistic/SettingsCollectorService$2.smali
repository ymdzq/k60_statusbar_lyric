.class Lcom/android/settings/statistic/SettingsCollectorService$2;
.super Ljava/lang/Object;
.source "SettingsCollectorService.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/statistic/SettingsCollectorService;->initializeSpecialSettings()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/statistic/SettingsCollectorService;


# direct methods
.method constructor <init>(Lcom/android/settings/statistic/SettingsCollectorService;)V
    .locals 0

    .line 103
    iput-object p1, p0, Lcom/android/settings/statistic/SettingsCollectorService$2;->this$0:Lcom/android/settings/statistic/SettingsCollectorService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call()Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 103
    invoke-virtual {p0}, Lcom/android/settings/statistic/SettingsCollectorService$2;->call()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public call()Ljava/lang/String;
    .locals 0

    .line 106
    iget-object p0, p0, Lcom/android/settings/statistic/SettingsCollectorService$2;->this$0:Lcom/android/settings/statistic/SettingsCollectorService;

    invoke-static {p0}, Lcom/android/settings/display/FontFragment;->getCurrentUsingFontName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
