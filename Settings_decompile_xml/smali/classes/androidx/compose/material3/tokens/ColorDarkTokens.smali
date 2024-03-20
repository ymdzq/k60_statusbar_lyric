.class public final Landroidx/compose/material3/tokens/ColorDarkTokens;
.super Ljava/lang/Object;
.source "ColorDarkTokens.kt"


# static fields
.field private static final Background:J

.field private static final Error:J

.field private static final ErrorContainer:J

.field public static final INSTANCE:Landroidx/compose/material3/tokens/ColorDarkTokens;

.field private static final InverseOnSurface:J

.field private static final InversePrimary:J

.field private static final InverseSurface:J

.field private static final OnBackground:J

.field private static final OnError:J

.field private static final OnErrorContainer:J

.field private static final OnPrimary:J

.field private static final OnPrimaryContainer:J

.field private static final OnSecondary:J

.field private static final OnSecondaryContainer:J

.field private static final OnSurface:J

.field private static final OnSurfaceVariant:J

.field private static final OnTertiary:J

.field private static final OnTertiaryContainer:J

.field private static final Outline:J

.field private static final OutlineVariant:J

.field private static final Primary:J

.field private static final PrimaryContainer:J

.field private static final Scrim:J

.field private static final Secondary:J

.field private static final SecondaryContainer:J

.field private static final Surface:J

.field private static final SurfaceTint:J

.field private static final SurfaceVariant:J

.field private static final Tertiary:J

.field private static final TertiaryContainer:J


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Landroidx/compose/material3/tokens/ColorDarkTokens;

    invoke-direct {v0}, Landroidx/compose/material3/tokens/ColorDarkTokens;-><init>()V

    sput-object v0, Landroidx/compose/material3/tokens/ColorDarkTokens;->INSTANCE:Landroidx/compose/material3/tokens/ColorDarkTokens;

    .line 22
    sget-object v0, Landroidx/compose/material3/tokens/PaletteTokens;->INSTANCE:Landroidx/compose/material3/tokens/PaletteTokens;

    invoke-virtual {v0}, Landroidx/compose/material3/tokens/PaletteTokens;->getNeutral10-0d7_KjU()J

    move-result-wide v1

    sput-wide v1, Landroidx/compose/material3/tokens/ColorDarkTokens;->Background:J

    .line 23
    invoke-virtual {v0}, Landroidx/compose/material3/tokens/PaletteTokens;->getError80-0d7_KjU()J

    move-result-wide v1

    sput-wide v1, Landroidx/compose/material3/tokens/ColorDarkTokens;->Error:J

    .line 24
    invoke-virtual {v0}, Landroidx/compose/material3/tokens/PaletteTokens;->getError30-0d7_KjU()J

    move-result-wide v1

    sput-wide v1, Landroidx/compose/material3/tokens/ColorDarkTokens;->ErrorContainer:J

    .line 25
    invoke-virtual {v0}, Landroidx/compose/material3/tokens/PaletteTokens;->getNeutral20-0d7_KjU()J

    move-result-wide v1

    sput-wide v1, Landroidx/compose/material3/tokens/ColorDarkTokens;->InverseOnSurface:J

    .line 26
    invoke-virtual {v0}, Landroidx/compose/material3/tokens/PaletteTokens;->getPrimary40-0d7_KjU()J

    move-result-wide v1

    sput-wide v1, Landroidx/compose/material3/tokens/ColorDarkTokens;->InversePrimary:J

    .line 27
    invoke-virtual {v0}, Landroidx/compose/material3/tokens/PaletteTokens;->getNeutral90-0d7_KjU()J

    move-result-wide v1

    sput-wide v1, Landroidx/compose/material3/tokens/ColorDarkTokens;->InverseSurface:J

    .line 28
    invoke-virtual {v0}, Landroidx/compose/material3/tokens/PaletteTokens;->getNeutral90-0d7_KjU()J

    move-result-wide v1

    sput-wide v1, Landroidx/compose/material3/tokens/ColorDarkTokens;->OnBackground:J

    .line 29
    invoke-virtual {v0}, Landroidx/compose/material3/tokens/PaletteTokens;->getError20-0d7_KjU()J

    move-result-wide v1

    sput-wide v1, Landroidx/compose/material3/tokens/ColorDarkTokens;->OnError:J

    .line 30
    invoke-virtual {v0}, Landroidx/compose/material3/tokens/PaletteTokens;->getError90-0d7_KjU()J

    move-result-wide v1

    sput-wide v1, Landroidx/compose/material3/tokens/ColorDarkTokens;->OnErrorContainer:J

    .line 31
    invoke-virtual {v0}, Landroidx/compose/material3/tokens/PaletteTokens;->getPrimary20-0d7_KjU()J

    move-result-wide v1

    sput-wide v1, Landroidx/compose/material3/tokens/ColorDarkTokens;->OnPrimary:J

    .line 32
    invoke-virtual {v0}, Landroidx/compose/material3/tokens/PaletteTokens;->getPrimary90-0d7_KjU()J

    move-result-wide v1

    sput-wide v1, Landroidx/compose/material3/tokens/ColorDarkTokens;->OnPrimaryContainer:J

    .line 33
    invoke-virtual {v0}, Landroidx/compose/material3/tokens/PaletteTokens;->getSecondary20-0d7_KjU()J

    move-result-wide v1

    sput-wide v1, Landroidx/compose/material3/tokens/ColorDarkTokens;->OnSecondary:J

    .line 34
    invoke-virtual {v0}, Landroidx/compose/material3/tokens/PaletteTokens;->getSecondary90-0d7_KjU()J

    move-result-wide v1

    sput-wide v1, Landroidx/compose/material3/tokens/ColorDarkTokens;->OnSecondaryContainer:J

    .line 35
    invoke-virtual {v0}, Landroidx/compose/material3/tokens/PaletteTokens;->getNeutral90-0d7_KjU()J

    move-result-wide v1

    sput-wide v1, Landroidx/compose/material3/tokens/ColorDarkTokens;->OnSurface:J

    .line 36
    invoke-virtual {v0}, Landroidx/compose/material3/tokens/PaletteTokens;->getNeutralVariant80-0d7_KjU()J

    move-result-wide v1

    sput-wide v1, Landroidx/compose/material3/tokens/ColorDarkTokens;->OnSurfaceVariant:J

    .line 37
    invoke-virtual {v0}, Landroidx/compose/material3/tokens/PaletteTokens;->getTertiary20-0d7_KjU()J

    move-result-wide v1

    sput-wide v1, Landroidx/compose/material3/tokens/ColorDarkTokens;->OnTertiary:J

    .line 38
    invoke-virtual {v0}, Landroidx/compose/material3/tokens/PaletteTokens;->getTertiary90-0d7_KjU()J

    move-result-wide v1

    sput-wide v1, Landroidx/compose/material3/tokens/ColorDarkTokens;->OnTertiaryContainer:J

    .line 39
    invoke-virtual {v0}, Landroidx/compose/material3/tokens/PaletteTokens;->getNeutralVariant60-0d7_KjU()J

    move-result-wide v1

    sput-wide v1, Landroidx/compose/material3/tokens/ColorDarkTokens;->Outline:J

    .line 40
    invoke-virtual {v0}, Landroidx/compose/material3/tokens/PaletteTokens;->getNeutralVariant30-0d7_KjU()J

    move-result-wide v1

    sput-wide v1, Landroidx/compose/material3/tokens/ColorDarkTokens;->OutlineVariant:J

    .line 41
    invoke-virtual {v0}, Landroidx/compose/material3/tokens/PaletteTokens;->getPrimary80-0d7_KjU()J

    move-result-wide v1

    sput-wide v1, Landroidx/compose/material3/tokens/ColorDarkTokens;->Primary:J

    .line 42
    invoke-virtual {v0}, Landroidx/compose/material3/tokens/PaletteTokens;->getPrimary30-0d7_KjU()J

    move-result-wide v3

    sput-wide v3, Landroidx/compose/material3/tokens/ColorDarkTokens;->PrimaryContainer:J

    .line 43
    invoke-virtual {v0}, Landroidx/compose/material3/tokens/PaletteTokens;->getNeutral0-0d7_KjU()J

    move-result-wide v3

    sput-wide v3, Landroidx/compose/material3/tokens/ColorDarkTokens;->Scrim:J

    .line 44
    invoke-virtual {v0}, Landroidx/compose/material3/tokens/PaletteTokens;->getSecondary80-0d7_KjU()J

    move-result-wide v3

    sput-wide v3, Landroidx/compose/material3/tokens/ColorDarkTokens;->Secondary:J

    .line 45
    invoke-virtual {v0}, Landroidx/compose/material3/tokens/PaletteTokens;->getSecondary30-0d7_KjU()J

    move-result-wide v3

    sput-wide v3, Landroidx/compose/material3/tokens/ColorDarkTokens;->SecondaryContainer:J

    .line 46
    invoke-virtual {v0}, Landroidx/compose/material3/tokens/PaletteTokens;->getNeutral10-0d7_KjU()J

    move-result-wide v3

    sput-wide v3, Landroidx/compose/material3/tokens/ColorDarkTokens;->Surface:J

    .line 47
    sput-wide v1, Landroidx/compose/material3/tokens/ColorDarkTokens;->SurfaceTint:J

    .line 48
    invoke-virtual {v0}, Landroidx/compose/material3/tokens/PaletteTokens;->getNeutralVariant30-0d7_KjU()J

    move-result-wide v1

    sput-wide v1, Landroidx/compose/material3/tokens/ColorDarkTokens;->SurfaceVariant:J

    .line 49
    invoke-virtual {v0}, Landroidx/compose/material3/tokens/PaletteTokens;->getTertiary80-0d7_KjU()J

    move-result-wide v1

    sput-wide v1, Landroidx/compose/material3/tokens/ColorDarkTokens;->Tertiary:J

    .line 50
    invoke-virtual {v0}, Landroidx/compose/material3/tokens/PaletteTokens;->getTertiary30-0d7_KjU()J

    move-result-wide v0

    sput-wide v0, Landroidx/compose/material3/tokens/ColorDarkTokens;->TertiaryContainer:J

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getBackground-0d7_KjU()J
    .locals 2

    .line 22
    sget-wide v0, Landroidx/compose/material3/tokens/ColorDarkTokens;->Background:J

    return-wide v0
.end method

.method public final getError-0d7_KjU()J
    .locals 2

    .line 23
    sget-wide v0, Landroidx/compose/material3/tokens/ColorDarkTokens;->Error:J

    return-wide v0
.end method

.method public final getErrorContainer-0d7_KjU()J
    .locals 2

    .line 24
    sget-wide v0, Landroidx/compose/material3/tokens/ColorDarkTokens;->ErrorContainer:J

    return-wide v0
.end method

.method public final getInverseOnSurface-0d7_KjU()J
    .locals 2

    .line 25
    sget-wide v0, Landroidx/compose/material3/tokens/ColorDarkTokens;->InverseOnSurface:J

    return-wide v0
.end method

.method public final getInversePrimary-0d7_KjU()J
    .locals 2

    .line 26
    sget-wide v0, Landroidx/compose/material3/tokens/ColorDarkTokens;->InversePrimary:J

    return-wide v0
.end method

.method public final getInverseSurface-0d7_KjU()J
    .locals 2

    .line 27
    sget-wide v0, Landroidx/compose/material3/tokens/ColorDarkTokens;->InverseSurface:J

    return-wide v0
.end method

.method public final getOnBackground-0d7_KjU()J
    .locals 2

    .line 28
    sget-wide v0, Landroidx/compose/material3/tokens/ColorDarkTokens;->OnBackground:J

    return-wide v0
.end method

.method public final getOnError-0d7_KjU()J
    .locals 2

    .line 29
    sget-wide v0, Landroidx/compose/material3/tokens/ColorDarkTokens;->OnError:J

    return-wide v0
.end method

.method public final getOnErrorContainer-0d7_KjU()J
    .locals 2

    .line 30
    sget-wide v0, Landroidx/compose/material3/tokens/ColorDarkTokens;->OnErrorContainer:J

    return-wide v0
.end method

.method public final getOnPrimary-0d7_KjU()J
    .locals 2

    .line 31
    sget-wide v0, Landroidx/compose/material3/tokens/ColorDarkTokens;->OnPrimary:J

    return-wide v0
.end method

.method public final getOnPrimaryContainer-0d7_KjU()J
    .locals 2

    .line 32
    sget-wide v0, Landroidx/compose/material3/tokens/ColorDarkTokens;->OnPrimaryContainer:J

    return-wide v0
.end method

.method public final getOnSecondary-0d7_KjU()J
    .locals 2

    .line 33
    sget-wide v0, Landroidx/compose/material3/tokens/ColorDarkTokens;->OnSecondary:J

    return-wide v0
.end method

.method public final getOnSecondaryContainer-0d7_KjU()J
    .locals 2

    .line 34
    sget-wide v0, Landroidx/compose/material3/tokens/ColorDarkTokens;->OnSecondaryContainer:J

    return-wide v0
.end method

.method public final getOnSurface-0d7_KjU()J
    .locals 2

    .line 35
    sget-wide v0, Landroidx/compose/material3/tokens/ColorDarkTokens;->OnSurface:J

    return-wide v0
.end method

.method public final getOnSurfaceVariant-0d7_KjU()J
    .locals 2

    .line 36
    sget-wide v0, Landroidx/compose/material3/tokens/ColorDarkTokens;->OnSurfaceVariant:J

    return-wide v0
.end method

.method public final getOnTertiary-0d7_KjU()J
    .locals 2

    .line 37
    sget-wide v0, Landroidx/compose/material3/tokens/ColorDarkTokens;->OnTertiary:J

    return-wide v0
.end method

.method public final getOnTertiaryContainer-0d7_KjU()J
    .locals 2

    .line 38
    sget-wide v0, Landroidx/compose/material3/tokens/ColorDarkTokens;->OnTertiaryContainer:J

    return-wide v0
.end method

.method public final getOutline-0d7_KjU()J
    .locals 2

    .line 39
    sget-wide v0, Landroidx/compose/material3/tokens/ColorDarkTokens;->Outline:J

    return-wide v0
.end method

.method public final getOutlineVariant-0d7_KjU()J
    .locals 2

    .line 40
    sget-wide v0, Landroidx/compose/material3/tokens/ColorDarkTokens;->OutlineVariant:J

    return-wide v0
.end method

.method public final getPrimary-0d7_KjU()J
    .locals 2

    .line 41
    sget-wide v0, Landroidx/compose/material3/tokens/ColorDarkTokens;->Primary:J

    return-wide v0
.end method

.method public final getPrimaryContainer-0d7_KjU()J
    .locals 2

    .line 42
    sget-wide v0, Landroidx/compose/material3/tokens/ColorDarkTokens;->PrimaryContainer:J

    return-wide v0
.end method

.method public final getScrim-0d7_KjU()J
    .locals 2

    .line 43
    sget-wide v0, Landroidx/compose/material3/tokens/ColorDarkTokens;->Scrim:J

    return-wide v0
.end method

.method public final getSecondary-0d7_KjU()J
    .locals 2

    .line 44
    sget-wide v0, Landroidx/compose/material3/tokens/ColorDarkTokens;->Secondary:J

    return-wide v0
.end method

.method public final getSecondaryContainer-0d7_KjU()J
    .locals 2

    .line 45
    sget-wide v0, Landroidx/compose/material3/tokens/ColorDarkTokens;->SecondaryContainer:J

    return-wide v0
.end method

.method public final getSurface-0d7_KjU()J
    .locals 2

    .line 46
    sget-wide v0, Landroidx/compose/material3/tokens/ColorDarkTokens;->Surface:J

    return-wide v0
.end method

.method public final getSurfaceVariant-0d7_KjU()J
    .locals 2

    .line 48
    sget-wide v0, Landroidx/compose/material3/tokens/ColorDarkTokens;->SurfaceVariant:J

    return-wide v0
.end method

.method public final getTertiary-0d7_KjU()J
    .locals 2

    .line 49
    sget-wide v0, Landroidx/compose/material3/tokens/ColorDarkTokens;->Tertiary:J

    return-wide v0
.end method

.method public final getTertiaryContainer-0d7_KjU()J
    .locals 2

    .line 50
    sget-wide v0, Landroidx/compose/material3/tokens/ColorDarkTokens;->TertiaryContainer:J

    return-wide v0
.end method
