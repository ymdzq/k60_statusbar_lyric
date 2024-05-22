.class public final Lcom/android/systemui/statusbar/phone/PhoneStatusBarViewController$Factory;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public final centralSurfaces:Lcom/android/systemui/statusbar/phone/CentralSurfaces;

.field public final configurationController:Lcom/android/systemui/statusbar/policy/ConfigurationController;

.field public final featureFlags:Lcom/android/systemui/flags/FeatureFlags;

.field public final progressProvider:Ljava/util/Optional;

.field public final shadeController:Lcom/android/systemui/shade/ShadeController;

.field public final shadeLogger:Lcom/android/systemui/shade/ShadeLogger;

.field public final userChipViewModel:Lcom/android/systemui/user/ui/viewmodel/StatusBarUserChipViewModel;

.field public final viewUtil:Lcom/android/systemui/util/view/ViewUtil;


# direct methods
.method public constructor <init>(Ljava/util/Optional;Ljava/util/Optional;Lcom/android/systemui/flags/FeatureFlags;Lcom/android/systemui/user/ui/viewmodel/StatusBarUserChipViewModel;Lcom/android/systemui/statusbar/phone/CentralSurfaces;Lcom/android/systemui/shade/ShadeController;Lcom/android/systemui/shade/ShadeLogger;Lcom/android/systemui/util/view/ViewUtil;Lcom/android/systemui/statusbar/policy/ConfigurationController;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarViewController$Factory;->progressProvider:Ljava/util/Optional;

    .line 5
    iput-object p3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarViewController$Factory;->featureFlags:Lcom/android/systemui/flags/FeatureFlags;

    .line 7
    iput-object p4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarViewController$Factory;->userChipViewModel:Lcom/android/systemui/user/ui/viewmodel/StatusBarUserChipViewModel;

    .line 9
    iput-object p5, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarViewController$Factory;->centralSurfaces:Lcom/android/systemui/statusbar/phone/CentralSurfaces;

    .line 11
    iput-object p6, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarViewController$Factory;->shadeController:Lcom/android/systemui/shade/ShadeController;

    .line 13
    iput-object p7, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarViewController$Factory;->shadeLogger:Lcom/android/systemui/shade/ShadeLogger;

    .line 15
    iput-object p8, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarViewController$Factory;->viewUtil:Lcom/android/systemui/util/view/ViewUtil;

    .line 17
    iput-object p9, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarViewController$Factory;->configurationController:Lcom/android/systemui/statusbar/policy/ConfigurationController;

    .line 19
    return-void
    .line 21
.end method
