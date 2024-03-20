.class public final synthetic Lcom/android/systemui/privacy/television/TvPrivacyChipsController$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/privacy/television/TvPrivacyChipsController;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/privacy/television/TvPrivacyChipsController;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/systemui/privacy/television/TvPrivacyChipsController$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/privacy/television/TvPrivacyChipsController;

    .line 5
    return-void
    .line 7
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/systemui/privacy/television/TvPrivacyChipsController$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/privacy/television/TvPrivacyChipsController;

    .line 2
    check-cast p1, Lcom/android/systemui/privacy/PrivacyItem;

    .line 4
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    iget-object p0, p1, Lcom/android/systemui/privacy/PrivacyItem;->privacyType:Lcom/android/systemui/privacy/PrivacyType;

    .line 9
    sget-object p1, Lcom/android/systemui/privacy/television/TvPrivacyChipsController;->CHIPS:Ljava/util/List;

    .line 11
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 13
    move-result-object p1

    .line 16
    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 17
    move-result v0

    .line 20
    const/4 v1, 0x1

    .line 21
    if-eqz v0, :cond_1

    .line 22
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 24
    move-result-object v0

    .line 27
    check-cast v0, Lcom/android/systemui/privacy/television/PrivacyItemsChip$ChipConfig;

    .line 28
    iget-object v0, v0, Lcom/android/systemui/privacy/television/PrivacyItemsChip$ChipConfig;->privacyTypes:Ljava/util/List;

    .line 30
    invoke-interface {v0, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 32
    move-result v0

    .line 35
    if-eqz v0, :cond_0

    .line 36
    move p0, v1

    .line 38
    goto :goto_0

    .line 39
    :cond_1
    const/4 p0, 0x0

    .line 40
    :goto_0
    xor-int/2addr p0, v1

    .line 41
    return p0
    .line 42
.end method
