.class Lcom/android/settings/search/SettingsGlobalSearcher$2;
.super Ljava/lang/Object;
.source "SettingsGlobalSearcher.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/search/SettingsGlobalSearcher;->loadDataAsync()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/search/SettingsGlobalSearcher;


# direct methods
.method constructor <init>(Lcom/android/settings/search/SettingsGlobalSearcher;)V
    .locals 0

    .line 465
    iput-object p1, p0, Lcom/android/settings/search/SettingsGlobalSearcher$2;->this$0:Lcom/android/settings/search/SettingsGlobalSearcher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    const-string v0, "SettingsGlobalSearcher"

    const-string v1, "loadDataAsync"

    .line 468
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 469
    iget-object p0, p0, Lcom/android/settings/search/SettingsGlobalSearcher$2;->this$0:Lcom/android/settings/search/SettingsGlobalSearcher;

    invoke-static {p0}, Lcom/android/settings/search/SettingsGlobalSearcher;->-$$Nest$mloadData(Lcom/android/settings/search/SettingsGlobalSearcher;)V

    return-void
.end method
