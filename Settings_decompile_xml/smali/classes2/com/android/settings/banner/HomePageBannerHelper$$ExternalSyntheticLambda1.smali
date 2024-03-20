.class public final synthetic Lcom/android/settings/banner/HomePageBannerHelper$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/settings/banner/HomePageBannerHelper$BannerCallback;

.field public final synthetic f$1:Lcom/android/settings/banner/BannerBean;


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/banner/HomePageBannerHelper$BannerCallback;Lcom/android/settings/banner/BannerBean;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/banner/HomePageBannerHelper$$ExternalSyntheticLambda1;->f$0:Lcom/android/settings/banner/HomePageBannerHelper$BannerCallback;

    iput-object p2, p0, Lcom/android/settings/banner/HomePageBannerHelper$$ExternalSyntheticLambda1;->f$1:Lcom/android/settings/banner/BannerBean;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/android/settings/banner/HomePageBannerHelper$$ExternalSyntheticLambda1;->f$0:Lcom/android/settings/banner/HomePageBannerHelper$BannerCallback;

    iget-object p0, p0, Lcom/android/settings/banner/HomePageBannerHelper$$ExternalSyntheticLambda1;->f$1:Lcom/android/settings/banner/BannerBean;

    invoke-static {v0, p0}, Lcom/android/settings/banner/HomePageBannerHelper;->$r8$lambda$V-5chJUTrr6GD6Q8oRks-AmdN_k(Lcom/android/settings/banner/HomePageBannerHelper$BannerCallback;Lcom/android/settings/banner/BannerBean;)V

    return-void
.end method
