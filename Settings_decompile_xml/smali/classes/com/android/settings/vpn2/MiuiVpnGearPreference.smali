.class public Lcom/android/settings/vpn2/MiuiVpnGearPreference;
.super Lcom/android/settingslib/miuisettings/preference/RadioButtonPreference;
.source "MiuiVpnGearPreference.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/vpn2/MiuiVpnGearPreference$OnGearClickListener;
    }
.end annotation


# instance fields
.field private mOnGearClickListener:Lcom/android/settings/vpn2/MiuiVpnGearPreference$OnGearClickListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 35
    invoke-direct {p0, p1, p2}, Lcom/android/settingslib/miuisettings/preference/RadioButtonPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method public onBindView(Landroid/view/View;)V
    .locals 1

    .line 51
    invoke-super {p0, p1}, Lcom/android/settingslib/miuisettings/preference/RadioButtonPreference;->onBindView(Landroid/view/View;)V

    .line 53
    sget v0, Lcom/android/settings/R$id;->settings_button:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    .line 54
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/4 p0, 0x1

    .line 55
    invoke-virtual {p1, p0}, Landroid/view/View;->setEnabled(Z)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 60
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    sget v0, Lcom/android/settings/R$id;->settings_button:I

    if-ne p1, v0, :cond_0

    .line 61
    iget-object p1, p0, Lcom/android/settings/vpn2/MiuiVpnGearPreference;->mOnGearClickListener:Lcom/android/settings/vpn2/MiuiVpnGearPreference$OnGearClickListener;

    if-eqz p1, :cond_0

    .line 62
    invoke-interface {p1, p0}, Lcom/android/settings/vpn2/MiuiVpnGearPreference$OnGearClickListener;->onGearClick(Lcom/android/settings/vpn2/MiuiVpnGearPreference;)V

    :cond_0
    return-void
.end method
