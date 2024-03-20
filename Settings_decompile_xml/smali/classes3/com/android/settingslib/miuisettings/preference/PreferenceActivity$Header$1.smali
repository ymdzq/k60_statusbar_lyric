.class Lcom/android/settingslib/miuisettings/preference/PreferenceActivity$Header$1;
.super Ljava/lang/Object;
.source "PreferenceActivity.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settingslib/miuisettings/preference/PreferenceActivity$Header;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/android/settingslib/miuisettings/preference/PreferenceActivity$Header;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 524
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/android/settingslib/miuisettings/preference/PreferenceActivity$Header;
    .locals 0

    .line 526
    new-instance p0, Lcom/android/settingslib/miuisettings/preference/PreferenceActivity$Header;

    invoke-direct {p0, p1}, Lcom/android/settingslib/miuisettings/preference/PreferenceActivity$Header;-><init>(Landroid/os/Parcel;)V

    return-object p0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 524
    invoke-virtual {p0, p1}, Lcom/android/settingslib/miuisettings/preference/PreferenceActivity$Header$1;->createFromParcel(Landroid/os/Parcel;)Lcom/android/settingslib/miuisettings/preference/PreferenceActivity$Header;

    move-result-object p0

    return-object p0
.end method

.method public newArray(I)[Lcom/android/settingslib/miuisettings/preference/PreferenceActivity$Header;
    .locals 0

    .line 529
    new-array p0, p1, [Lcom/android/settingslib/miuisettings/preference/PreferenceActivity$Header;

    return-object p0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 524
    invoke-virtual {p0, p1}, Lcom/android/settingslib/miuisettings/preference/PreferenceActivity$Header$1;->newArray(I)[Lcom/android/settingslib/miuisettings/preference/PreferenceActivity$Header;

    move-result-object p0

    return-object p0
.end method
