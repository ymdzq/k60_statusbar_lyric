.class public final synthetic Lcom/android/settings/banner/HomePageBannerHelper$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroid/content/Context;

.field public final synthetic f$1:Lcom/android/settings/banner/HomePageBannerHelper$BannerCallback;


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;Lcom/android/settings/banner/HomePageBannerHelper$BannerCallback;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/banner/HomePageBannerHelper$$ExternalSyntheticLambda0;->f$0:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/settings/banner/HomePageBannerHelper$$ExternalSyntheticLambda0;->f$1:Lcom/android/settings/banner/HomePageBannerHelper$BannerCallback;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/android/settings/banner/HomePageBannerHelper$$ExternalSyntheticLambda0;->f$0:Landroid/content/Context;

    iget-object p0, p0, Lcom/android/settings/banner/HomePageBannerHelper$$ExternalSyntheticLambda0;->f$1:Lcom/android/settings/banner/HomePageBannerHelper$BannerCallback;

    invoke-static {v0, p0}, Lcom/android/settings/banner/HomePageBannerHelper;->$r8$lambda$VJAimS82ARXAdlZ3d9eQeXSns_s(Landroid/content/Context;Lcom/android/settings/banner/HomePageBannerHelper$BannerCallback;)V

    return-void
.end method
