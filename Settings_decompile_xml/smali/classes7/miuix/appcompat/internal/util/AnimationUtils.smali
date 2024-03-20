.class public Lmiuix/appcompat/internal/util/AnimationUtils;
.super Ljava/lang/Object;
.source "AnimationUtils.java"


# direct methods
.method public static createAnimator(Landroidx/fragment/app/Fragment;I)Landroid/animation/Animator;
    .locals 3

    .line 13
    sget v0, Lmiuix/appcompat/R$anim;->miuix_appcompat_fragment_transition_activity_open_enter:I

    const/4 v1, 0x1

    if-ne p1, v0, :cond_0

    .line 14
    new-instance p1, Lmiuix/appcompat/internal/app/FragmentAnimator;

    invoke-direct {p1, p0, v1, v1}, Lmiuix/appcompat/internal/app/FragmentAnimator;-><init>(Landroidx/fragment/app/Fragment;ZZ)V

    return-object p1

    .line 15
    :cond_0
    sget v0, Lmiuix/appcompat/R$anim;->miuix_appcompat_fragment_transition_activity_open_exit:I

    const/4 v2, 0x0

    if-ne p1, v0, :cond_1

    .line 16
    new-instance p1, Lmiuix/appcompat/internal/app/FragmentAnimator;

    invoke-direct {p1, p0, v1, v2}, Lmiuix/appcompat/internal/app/FragmentAnimator;-><init>(Landroidx/fragment/app/Fragment;ZZ)V

    return-object p1

    .line 17
    :cond_1
    sget v0, Lmiuix/appcompat/R$anim;->miuix_appcompat_fragment_transition_activity_close_enter:I

    if-ne p1, v0, :cond_2

    .line 18
    new-instance p1, Lmiuix/appcompat/internal/app/FragmentAnimator;

    invoke-direct {p1, p0, v2, v1}, Lmiuix/appcompat/internal/app/FragmentAnimator;-><init>(Landroidx/fragment/app/Fragment;ZZ)V

    return-object p1

    .line 19
    :cond_2
    sget v0, Lmiuix/appcompat/R$anim;->miuix_appcompat_fragment_transition_activity_close_exit:I

    if-ne p1, v0, :cond_3

    .line 20
    new-instance p1, Lmiuix/appcompat/internal/app/FragmentAnimator;

    invoke-direct {p1, p0, v2, v2}, Lmiuix/appcompat/internal/app/FragmentAnimator;-><init>(Landroidx/fragment/app/Fragment;ZZ)V

    return-object p1

    :cond_3
    const/4 p0, 0x0

    return-object p0
.end method
