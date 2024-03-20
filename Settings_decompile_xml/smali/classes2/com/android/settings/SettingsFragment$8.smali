.class Lcom/android/settings/SettingsFragment$8;
.super Ljava/lang/Object;
.source "SettingsFragment.java"

# interfaces
.implements Lcom/android/settings/banner/HomePageBannerHelper$BannerCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/SettingsFragment;->loadRemovableHint()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/SettingsFragment;


# direct methods
.method constructor <init>(Lcom/android/settings/SettingsFragment;)V
    .locals 0

    .line 737
    iput-object p1, p0, Lcom/android/settings/SettingsFragment$8;->this$0:Lcom/android/settings/SettingsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGetBanner(Lcom/android/settings/banner/BannerBean;)V
    .locals 3

    .line 740
    iget-object v0, p0, Lcom/android/settings/SettingsFragment$8;->this$0:Lcom/android/settings/SettingsFragment;

    invoke-virtual {v0}, Lcom/android/settings/SettingsFragment;->getTipsLocalModel()Lcom/android/settings/banner/BannerBean;

    move-result-object v0

    .line 741
    invoke-static {v0}, Lcom/android/settings/banner/HomePageBannerHelper;->isEmptyBanner(Lcom/android/settings/banner/BannerBean;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_2

    .line 742
    invoke-virtual {v0, p1}, Lcom/android/settings/banner/BannerBean;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/android/settings/SettingsFragment$8;->this$0:Lcom/android/settings/SettingsFragment;

    invoke-static {v1}, Lcom/android/settings/SettingsFragment;->-$$Nest$fgetisFirstCreated(Lcom/android/settings/SettingsFragment;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 747
    :cond_0
    iget-object v0, p0, Lcom/android/settings/SettingsFragment$8;->this$0:Lcom/android/settings/SettingsFragment;

    invoke-static {v0, v2}, Lcom/android/settings/SettingsFragment;->-$$Nest$fputisFirstCreated(Lcom/android/settings/SettingsFragment;Z)V

    .line 748
    iget-object v0, p0, Lcom/android/settings/SettingsFragment$8;->this$0:Lcom/android/settings/SettingsFragment;

    invoke-virtual {v0, p1}, Lcom/android/settings/SettingsFragment;->setTipsLocalModel(Lcom/android/settings/banner/BannerBean;)V

    .line 749
    iget-object p1, p0, Lcom/android/settings/SettingsFragment$8;->this$0:Lcom/android/settings/SettingsFragment;

    invoke-static {p1}, Lcom/android/settings/SettingsFragment;->-$$Nest$fgetmBannerCallback(Lcom/android/settings/SettingsFragment;)Lcom/android/settings/SettingsFragment$BannerCallback;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 750
    iget-object p0, p0, Lcom/android/settings/SettingsFragment$8;->this$0:Lcom/android/settings/SettingsFragment;

    invoke-static {p0}, Lcom/android/settings/SettingsFragment;->-$$Nest$fgetmBannerCallback(Lcom/android/settings/SettingsFragment;)Lcom/android/settings/SettingsFragment$BannerCallback;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/settings/SettingsFragment$BannerCallback;->updateTips()V

    :cond_1
    return-void

    .line 743
    :cond_2
    :goto_0
    iget-object p0, p0, Lcom/android/settings/SettingsFragment$8;->this$0:Lcom/android/settings/SettingsFragment;

    invoke-static {p0, v2}, Lcom/android/settings/SettingsFragment;->-$$Nest$fputisFirstCreated(Lcom/android/settings/SettingsFragment;Z)V

    .line 744
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "The current banner do not need to be refreshed: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "SettingsFragment"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
