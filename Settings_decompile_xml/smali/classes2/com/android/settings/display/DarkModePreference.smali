.class public Lcom/android/settings/display/DarkModePreference;
.super Lcom/android/settings/display/PaperModePreference;
.source "DarkModePreference.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 12
    invoke-direct {p0, p1, v0}, Lcom/android/settings/display/DarkModePreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 16
    invoke-direct {p0, p1, p2}, Lcom/android/settings/display/PaperModePreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method public onBindView(Landroid/view/View;)V
    .locals 0

    .line 20
    invoke-super {p0, p1}, Lcom/android/settings/display/PaperModePreference;->onBindView(Landroid/view/View;)V

    return-void
.end method
