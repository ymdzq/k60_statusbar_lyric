.class Lcom/android/settings/accounts/MiuiAccountSettings$ProfileData;
.super Ljava/lang/Object;
.source "MiuiAccountSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/accounts/MiuiAccountSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ProfileData"
.end annotation


# instance fields
.field public addAccountPreference:Lcom/android/settingslib/RestrictedPreference;

.field public authenticatorHelper:Lcom/android/settingslib/accounts/AuthenticatorHelper;

.field public managedProfilePreference:Landroidx/preference/Preference;

.field public preferenceGroup:Landroidx/preference/PreferenceGroup;

.field public removeWorkProfilePreference:Lcom/android/settingslib/RestrictedPreference;

.field public userInfo:Landroid/content/pm/UserInfo;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 172
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/accounts/MiuiAccountSettings$ProfileData-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/settings/accounts/MiuiAccountSettings$ProfileData;-><init>()V

    return-void
.end method
