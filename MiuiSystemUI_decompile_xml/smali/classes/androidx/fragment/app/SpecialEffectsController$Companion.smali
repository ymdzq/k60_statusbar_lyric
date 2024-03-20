.class public abstract Landroidx/fragment/app/SpecialEffectsController$Companion;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# direct methods
.method public static asOperationState(Landroid/view/View;)Landroidx/fragment/app/SpecialEffectsController$Operation$State;
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getAlpha()F

    .line 2
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    cmpg-float v0, v0, v1

    .line 7
    if-nez v0, :cond_0

    .line 9
    const/4 v0, 0x1

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 v0, 0x0

    .line 13
    :goto_0
    sget-object v1, Landroidx/fragment/app/SpecialEffectsController$Operation$State;->INVISIBLE:Landroidx/fragment/app/SpecialEffectsController$Operation$State;

    .line 14
    if-eqz v0, :cond_1

    .line 16
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    .line 18
    move-result v0

    .line 21
    if-nez v0, :cond_1

    .line 22
    goto :goto_1

    .line 24
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    .line 25
    move-result p0

    .line 28
    if-eqz p0, :cond_3

    .line 29
    const/4 v0, 0x4

    .line 31
    if-eq p0, v0, :cond_4

    .line 32
    const/16 v0, 0x8

    .line 34
    if-ne p0, v0, :cond_2

    .line 36
    sget-object v1, Landroidx/fragment/app/SpecialEffectsController$Operation$State;->GONE:Landroidx/fragment/app/SpecialEffectsController$Operation$State;

    .line 38
    goto :goto_1

    .line 40
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 41
    const-string v1, "Unknown visibility "

    .line 43
    invoke-static {v1, p0}, Landroidx/appcompat/view/menu/SubMenuBuilder$$ExternalSyntheticOutline0;->m(Ljava/lang/String;I)Ljava/lang/String;

    .line 45
    move-result-object p0

    .line 48
    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 49
    throw v0

    .line 52
    :cond_3
    sget-object v1, Landroidx/fragment/app/SpecialEffectsController$Operation$State;->VISIBLE:Landroidx/fragment/app/SpecialEffectsController$Operation$State;

    .line 53
    :cond_4
    :goto_1
    return-object v1
    .line 55
.end method
