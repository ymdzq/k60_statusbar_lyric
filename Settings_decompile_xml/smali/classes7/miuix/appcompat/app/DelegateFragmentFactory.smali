.class public Lmiuix/appcompat/app/DelegateFragmentFactory;
.super Landroidx/fragment/app/FragmentFactory;
.source "DelegateFragmentFactory.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Landroidx/fragment/app/FragmentFactory;-><init>()V

    return-void
.end method


# virtual methods
.method public createFragmentDelegate(Landroidx/fragment/app/Fragment;)Lmiuix/appcompat/app/FragmentDelegate;
    .locals 0

    .line 8
    new-instance p0, Lmiuix/appcompat/app/FragmentDelegate;

    invoke-direct {p0, p1}, Lmiuix/appcompat/app/FragmentDelegate;-><init>(Landroidx/fragment/app/Fragment;)V

    return-object p0
.end method
