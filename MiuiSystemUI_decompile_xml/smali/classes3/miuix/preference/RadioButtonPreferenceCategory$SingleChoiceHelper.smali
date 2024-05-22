.class public abstract Lmiuix/preference/RadioButtonPreferenceCategory$SingleChoiceHelper;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Landroid/widget/Checkable;


# instance fields
.field public final mCheckable:Landroid/widget/Checkable;


# direct methods
.method public constructor <init>(Landroid/widget/Checkable;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lmiuix/preference/RadioButtonPreferenceCategory$SingleChoiceHelper;->mCheckable:Landroid/widget/Checkable;

    .line 5
    return-void
    .line 7
.end method


# virtual methods
.method public abstract getPreference()Landroidx/preference/Preference;
.end method

.method public final isChecked()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lmiuix/preference/RadioButtonPreferenceCategory$SingleChoiceHelper;->mCheckable:Landroid/widget/Checkable;

    .line 2
    invoke-interface {p0}, Landroid/widget/Checkable;->isChecked()Z

    .line 4
    move-result p0

    .line 7
    return p0
    .line 8
.end method

.method public setChecked(Z)V
    .locals 0

    .line 1
    iget-object p0, p0, Lmiuix/preference/RadioButtonPreferenceCategory$SingleChoiceHelper;->mCheckable:Landroid/widget/Checkable;

    .line 2
    invoke-interface {p0, p1}, Landroid/widget/Checkable;->setChecked(Z)V

    .line 4
    return-void
    .line 7
.end method

.method public final toggle()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lmiuix/preference/RadioButtonPreferenceCategory$SingleChoiceHelper;->isChecked()Z

    .line 2
    move-result v0

    .line 5
    xor-int/lit8 v0, v0, 0x1

    .line 6
    invoke-virtual {p0, v0}, Lmiuix/preference/RadioButtonPreferenceCategory$SingleChoiceHelper;->setChecked(Z)V

    .line 8
    return-void
    .line 11
.end method
