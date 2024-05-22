.class public final Lcom/google/android/material/tabs/TabLayout$Tab;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public contentDesc:Ljava/lang/CharSequence;

.field public customView:Landroid/view/View;

.field public icon:Landroid/graphics/drawable/Drawable;

.field public id:I

.field public parent:Lcom/google/android/material/tabs/TabLayout;

.field public position:I

.field public text:Ljava/lang/CharSequence;

.field public view:Lcom/google/android/material/tabs/TabLayout$TabView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    const/4 v0, -0x1

    .line 5
    iput v0, p0, Lcom/google/android/material/tabs/TabLayout$Tab;->position:I

    .line 6
    iput v0, p0, Lcom/google/android/material/tabs/TabLayout$Tab;->id:I

    .line 8
    return-void
    .line 10
.end method
