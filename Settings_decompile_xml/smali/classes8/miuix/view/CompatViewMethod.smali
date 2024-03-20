.class public Lmiuix/view/CompatViewMethod;
.super Ljava/lang/Object;
.source "CompatViewMethod.java"


# direct methods
.method public static setActivityTranslucent(Landroid/app/Activity;Z)V
    .locals 0

    .line 26
    invoke-virtual {p0, p1}, Landroid/app/Activity;->setTranslucent(Z)Z

    return-void
.end method

.method public static setForceDarkAllowed(Landroid/view/View;Z)V
    .locals 0

    .line 14
    invoke-virtual {p0, p1}, Landroid/view/View;->setForceDarkAllowed(Z)V

    return-void
.end method
