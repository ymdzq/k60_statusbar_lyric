.class public final Lcom/android/systemui/statusbar/KeyboardShortcutListSearch$ShortcutMultiMappingInfo;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field public final mIcon:Landroid/graphics/drawable/Icon;

.field public final mLabel:Ljava/lang/CharSequence;

.field public final mShortcutKeyGroups:Ljava/util/List;


# direct methods
.method public constructor <init>(Landroid/view/KeyboardShortcutInfo;)V
    .locals 1

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    invoke-virtual {p1}, Landroid/view/KeyboardShortcutInfo;->getLabel()Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/KeyboardShortcutListSearch$ShortcutMultiMappingInfo;->mLabel:Ljava/lang/CharSequence;

    .line 7
    invoke-virtual {p1}, Landroid/view/KeyboardShortcutInfo;->getIcon()Landroid/graphics/drawable/Icon;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/KeyboardShortcutListSearch$ShortcutMultiMappingInfo;->mIcon:Landroid/graphics/drawable/Icon;

    .line 8
    new-instance v0, Lcom/android/systemui/statusbar/KeyboardShortcutListSearch$ShortcutKeyGroup;

    invoke-direct {v0, p1}, Lcom/android/systemui/statusbar/KeyboardShortcutListSearch$ShortcutKeyGroup;-><init>(Landroid/view/KeyboardShortcutInfo;)V

    filled-new-array {v0}, [Lcom/android/systemui/statusbar/KeyboardShortcutListSearch$ShortcutKeyGroup;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/statusbar/KeyboardShortcutListSearch$ShortcutMultiMappingInfo;->mShortcutKeyGroups:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;Landroid/graphics/drawable/Icon;Ljava/util/List;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/systemui/statusbar/KeyboardShortcutListSearch$ShortcutMultiMappingInfo;->mLabel:Ljava/lang/CharSequence;

    .line 3
    iput-object p2, p0, Lcom/android/systemui/statusbar/KeyboardShortcutListSearch$ShortcutMultiMappingInfo;->mIcon:Landroid/graphics/drawable/Icon;

    .line 4
    iput-object p3, p0, Lcom/android/systemui/statusbar/KeyboardShortcutListSearch$ShortcutMultiMappingInfo;->mShortcutKeyGroups:Ljava/util/List;

    return-void
.end method
