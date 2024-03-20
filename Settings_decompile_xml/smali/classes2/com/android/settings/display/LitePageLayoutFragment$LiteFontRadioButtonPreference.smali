.class public Lcom/android/settings/display/LitePageLayoutFragment$LiteFontRadioButtonPreference;
.super Lmiuix/preference/RadioButtonPreference;
.source "LitePageLayoutFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/display/LitePageLayoutFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LiteFontRadioButtonPreference"
.end annotation


# instance fields
.field private final mFontId:Ljava/lang/String;

.field private final mIsVariable:Z

.field private final mRightFileUnaccessable:Z


# direct methods
.method static bridge synthetic -$$Nest$fgetmFontId(Lcom/android/settings/display/LitePageLayoutFragment$LiteFontRadioButtonPreference;)Ljava/lang/String;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/display/LitePageLayoutFragment$LiteFontRadioButtonPreference;->mFontId:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmRightFileUnaccessable(Lcom/android/settings/display/LitePageLayoutFragment$LiteFontRadioButtonPreference;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lcom/android/settings/display/LitePageLayoutFragment$LiteFontRadioButtonPreference;->mRightFileUnaccessable:Z

    return p0
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;ZZ)V
    .locals 0

    .line 560
    invoke-direct {p0, p1}, Lmiuix/preference/RadioButtonPreference;-><init>(Landroid/content/Context;)V

    .line 561
    iput-object p2, p0, Lcom/android/settings/display/LitePageLayoutFragment$LiteFontRadioButtonPreference;->mFontId:Ljava/lang/String;

    .line 562
    iput-boolean p3, p0, Lcom/android/settings/display/LitePageLayoutFragment$LiteFontRadioButtonPreference;->mRightFileUnaccessable:Z

    .line 563
    iput-boolean p4, p0, Lcom/android/settings/display/LitePageLayoutFragment$LiteFontRadioButtonPreference;->mIsVariable:Z

    return-void
.end method


# virtual methods
.method public getFontId()Ljava/lang/String;
    .locals 0

    .line 567
    iget-object p0, p0, Lcom/android/settings/display/LitePageLayoutFragment$LiteFontRadioButtonPreference;->mFontId:Ljava/lang/String;

    return-object p0
.end method

.method public isVariable()Z
    .locals 0

    .line 575
    iget-boolean p0, p0, Lcom/android/settings/display/LitePageLayoutFragment$LiteFontRadioButtonPreference;->mIsVariable:Z

    return p0
.end method
