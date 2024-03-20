.class Lcom/android/settings/MiuiGxzwAnimSettingsInternalActivity$GxzwAnimSettingHelper;
.super Ljava/lang/Object;
.source "MiuiGxzwAnimSettingsInternalActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/MiuiGxzwAnimSettingsInternalActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "GxzwAnimSettingHelper"
.end annotation


# static fields
.field static final sItemList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/settings/MiuiGxzwAnimSettingsInternalActivity$GxzwAnimItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 14

    .line 525
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/settings/MiuiGxzwAnimSettingsInternalActivity$GxzwAnimSettingHelper;->sItemList:Ljava/util/List;

    .line 526
    new-instance v7, Lcom/android/settings/MiuiGxzwAnimSettingsInternalActivity$GxzwAnimItem;

    const/4 v2, 0x0

    const/4 v3, -0x1

    const-string v4, ""

    sget v5, Lcom/android/settings/R$string;->none:I

    sget v6, Lcom/android/settings/R$drawable;->gxzw_none_recognizing_anim:I

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lcom/android/settings/MiuiGxzwAnimSettingsInternalActivity$GxzwAnimItem;-><init>(IILjava/lang/String;II)V

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 528
    new-instance v1, Lcom/android/settings/MiuiGxzwAnimSettingsInternalActivity$GxzwAnimItem;

    const/4 v9, 0x6

    const/16 v10, 0x9f

    const-string v11, "gxzw_anim_light"

    sget v12, Lcom/android/settings/R$string;->gxzw_anim_light:I

    sget v13, Lcom/android/settings/R$drawable;->gxzw_light_recognizing_anim:I

    move-object v8, v1

    invoke-direct/range {v8 .. v13}, Lcom/android/settings/MiuiGxzwAnimSettingsInternalActivity$GxzwAnimItem;-><init>(IILjava/lang/String;II)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 530
    new-instance v1, Lcom/android/settings/MiuiGxzwAnimSettingsInternalActivity$GxzwAnimItem;

    const/4 v3, 0x7

    const/16 v4, 0x9e

    const-string v5, "gxzw_anim_star"

    sget v6, Lcom/android/settings/R$string;->gxzw_anim_star:I

    sget v7, Lcom/android/settings/R$drawable;->gxzw_star_recognizing_anim:I

    move-object v2, v1

    invoke-direct/range {v2 .. v7}, Lcom/android/settings/MiuiGxzwAnimSettingsInternalActivity$GxzwAnimItem;-><init>(IILjava/lang/String;II)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 532
    new-instance v1, Lcom/android/settings/MiuiGxzwAnimSettingsInternalActivity$GxzwAnimItem;

    const/16 v9, 0x8

    const/16 v10, 0xa0

    const-string v11, "gxzw_anim_aurora"

    sget v12, Lcom/android/settings/R$string;->gxzw_anim_aurora:I

    sget v13, Lcom/android/settings/R$drawable;->gxzw_aurora_recognizing_anim:I

    move-object v8, v1

    invoke-direct/range {v8 .. v13}, Lcom/android/settings/MiuiGxzwAnimSettingsInternalActivity$GxzwAnimItem;-><init>(IILjava/lang/String;II)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 534
    new-instance v1, Lcom/android/settings/MiuiGxzwAnimSettingsInternalActivity$GxzwAnimItem;

    const/16 v3, 0x9

    const/16 v4, 0x9d

    const-string v5, "gxzw_anim_pulse"

    sget v6, Lcom/android/settings/R$string;->gxzw_anim_pulse:I

    sget v7, Lcom/android/settings/R$drawable;->gxzw_pulse_recognizing_anim:I

    move-object v2, v1

    invoke-direct/range {v2 .. v7}, Lcom/android/settings/MiuiGxzwAnimSettingsInternalActivity$GxzwAnimItem;-><init>(IILjava/lang/String;II)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method static getDefaultAnimType()I
    .locals 1

    .line 0
    const/4 v0, 0x6

    return v0
.end method

.method static getGxzwAnimItemList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/settings/MiuiGxzwAnimSettingsInternalActivity$GxzwAnimItem;",
            ">;"
        }
    .end annotation

    .line 539
    sget-object v0, Lcom/android/settings/MiuiGxzwAnimSettingsInternalActivity$GxzwAnimSettingHelper;->sItemList:Ljava/util/List;

    return-object v0
.end method

.method static getLegalAnimTypeSet()Ljava/util/Set;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 547
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 548
    invoke-static {}, Lcom/android/settings/MiuiGxzwAnimSettingsInternalActivity$GxzwAnimSettingHelper;->getGxzwAnimItemList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settings/MiuiGxzwAnimSettingsInternalActivity$GxzwAnimItem;

    .line 549
    iget v2, v2, Lcom/android/settings/MiuiGxzwAnimSettingsInternalActivity$GxzwAnimItem;->type:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method
