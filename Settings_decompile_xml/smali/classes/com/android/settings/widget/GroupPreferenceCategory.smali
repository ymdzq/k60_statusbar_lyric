.class public Lcom/android/settings/widget/GroupPreferenceCategory;
.super Landroidx/preference/PreferenceCategory;
.source "GroupPreferenceCategory.java"


# instance fields
.field private mGroupId:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 56
    invoke-direct {p0, p1}, Landroidx/preference/PreferenceCategory;-><init>(Landroid/content/Context;)V

    const/4 p1, -0x1

    .line 40
    iput p1, p0, Lcom/android/settings/widget/GroupPreferenceCategory;->mGroupId:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 52
    invoke-direct {p0, p1, p2}, Landroidx/preference/PreferenceCategory;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, -0x1

    .line 40
    iput p1, p0, Lcom/android/settings/widget/GroupPreferenceCategory;->mGroupId:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 48
    invoke-direct {p0, p1, p2, p3}, Landroidx/preference/PreferenceCategory;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, -0x1

    .line 40
    iput p1, p0, Lcom/android/settings/widget/GroupPreferenceCategory;->mGroupId:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 44
    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/preference/PreferenceCategory;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 p1, -0x1

    .line 40
    iput p1, p0, Lcom/android/settings/widget/GroupPreferenceCategory;->mGroupId:I

    return-void
.end method


# virtual methods
.method public getGroupId()I
    .locals 0

    .line 60
    iget p0, p0, Lcom/android/settings/widget/GroupPreferenceCategory;->mGroupId:I

    return p0
.end method

.method public setGroupId(I)V
    .locals 0

    .line 64
    iput p1, p0, Lcom/android/settings/widget/GroupPreferenceCategory;->mGroupId:I

    return-void
.end method
