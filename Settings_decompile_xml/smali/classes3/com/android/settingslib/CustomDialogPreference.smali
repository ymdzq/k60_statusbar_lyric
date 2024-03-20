.class public Lcom/android/settingslib/CustomDialogPreference;
.super Lcom/android/settingslib/miuisettings/preference/DialogPreference;
.source "CustomDialogPreference.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settingslib/CustomDialogPreference$CustomPreferenceDialogFragment;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private mFragment:Lcom/android/settingslib/CustomDialogPreference$CustomPreferenceDialogFragment;

.field private mOnShowListener:Landroid/content/DialogInterface$OnShowListener;


# direct methods
.method static bridge synthetic -$$Nest$mgetOnShowListener(Lcom/android/settingslib/CustomDialogPreference;)Landroid/content/DialogInterface$OnShowListener;
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/settingslib/CustomDialogPreference;->getOnShowListener()Landroid/content/DialogInterface$OnShowListener;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$msetFragment(Lcom/android/settingslib/CustomDialogPreference;Lcom/android/settingslib/CustomDialogPreference$CustomPreferenceDialogFragment;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/settingslib/CustomDialogPreference;->setFragment(Lcom/android/settingslib/CustomDialogPreference$CustomPreferenceDialogFragment;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 49
    invoke-direct {p0, p1, p2}, Lcom/android/settingslib/miuisettings/preference/DialogPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 45
    invoke-direct {p0, p1, p2, p3}, Lcom/android/settingslib/miuisettings/preference/DialogPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 41
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/settingslib/miuisettings/preference/DialogPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method private getOnShowListener()Landroid/content/DialogInterface$OnShowListener;
    .locals 0

    .line 88
    iget-object p0, p0, Lcom/android/settingslib/CustomDialogPreference;->mOnShowListener:Landroid/content/DialogInterface$OnShowListener;

    return-object p0
.end method

.method private setFragment(Lcom/android/settingslib/CustomDialogPreference$CustomPreferenceDialogFragment;)V
    .locals 0

    .line 84
    iput-object p1, p0, Lcom/android/settingslib/CustomDialogPreference;->mFragment:Lcom/android/settingslib/CustomDialogPreference$CustomPreferenceDialogFragment;

    return-void
.end method


# virtual methods
.method protected onBindDialogView(Landroid/view/View;)V
    .locals 0

    .line 0
    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 0
    return-void
.end method

.method protected onDialogClosed(Z)V
    .locals 0

    .line 0
    return-void
.end method

.method protected onPrepareDialogBuilder(Landroidx/appcompat/app/AlertDialog$Builder;Landroid/content/DialogInterface$OnClickListener;)V
    .locals 0

    .line 0
    return-void
.end method
